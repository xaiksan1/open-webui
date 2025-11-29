<script lang="ts">
	import { afterUpdate, onMount, tick } from 'svelte';
	// import Dalle from '$lib/components/icons/Dalle.svelte';
	import { chats, currentChatPage, loadingChats, chatsCount, getChats } from '$lib/stores';
	// import ChatListItem from '$lib/components/chat/ChatListItem.svelte';
	import { goto } from '$app/navigation';
	import { page } from '$app/stores';
	import { getChatListBySearchText } from '$lib/apis/chats';

	export let searchText = '';

	let searchResults = [];

	onMount(async () => {
		if (searchText) {
			searchResults = await getChatListBySearchText(localStorage.token, searchText);
		}
	});

	afterUpdate(async () => {
		if (searchText) {
			searchResults = await getChatListBySearchText(localStorage.token, searchText);
		} else {
			searchResults = [];
		}
	});
</script>

<div class="w-full flex justify-center">
	<div class=" w-full flex flex-col max-w-lg h-full pt-4">
		{#if searchResults.length > 0}
			<div class=" w-full text-lg font-semibold text-gray-900 dark:text-gray-100 px-1.5 pb-2">
				Search Results ({searchResults.length})
			</div>
			<div class=" w-full h-full overflow-y-auto">
				{#each searchResults as chat, i}
					<!-- ChatListItem supprimé : afficher l'ID du chat à la place -->
					<div class="p-2 border-b border-gray-200 dark:border-gray-700">
						Chat ID: {chat.id}
					</div>
				{/each}
			</div>
		{:else}
			<div class=" w-full text-lg font-semibold text-gray-900 dark:text-gray-100 px-1.5 pb-2">
				No Search Results
			</div>
		{/if}
	</div>
</div>

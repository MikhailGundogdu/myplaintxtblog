# myplaintxtblog Template

Hello! Welcome to [plaintxt.blog](https://plaintxt.blog). To create your blog, you just need a GitHub account.

If you don't have a GitHub account yet, you are already on the right website. Choose your username wisely, as that will be your username for plaintxt.blog as well.

## Creating Your Blog

At the top of this page, you'll see a colored (probably green) **Use this template** button. 

Click on that button and select **Create a new repository**. Turn on **Include all branches** and set the repository name to `myplaintxtblog`. Make sure the repository visibility is set to public and create the repository.

Next, click on **Settings** at the top of your new repository page (it may be hidden behind a "More" menu), and select **Pages** from the side bar. Under **Build and deployment**, select "GitHub Actions" as the **Source**.

Go back to the **Code** tab of the repository and open the `name` file. Replace its content with the name you wish to be displayed to the world, and click **Commit**.

Finally, you need to create a license file. This step isn't strictly necessary, but highly recommended. Choose a license from the internet based on how you want your articles to be legally protected, and paste its contents into a new `LICENSE` file. If you don't know where to start, check out [Creative Commons' licenses](https://creativecommons.org/cc-licenses/) and [this repository](https://github.com/JiningLiu/myplaintxtblog/blob/main/LICENSE).

That's it! You are ready to start blogging.

## Writing an Article

Creating a new article is as easy as creating a new file. However, there is a required header format for each article:

```
Put your article title in the first line
And your subtitle in the second line
2026-05-17
```

As you may have noticed, the date is set and updated by you, the author. While GitHub keeps track of when the article was made and updated, that information isn't displayed on the website as of now. Put the date in the third line of every article file with format `yyyy-mm-dd`.

Everything below the third line is all yours. Happy writing!

## Viewing Your Blog

Simply visit `plaintxt.blog/your_username` to view your articles! It may take a few minutes after publishing your articles for them to show up. You can check the publishing status in the **Actions** tab of your repository.
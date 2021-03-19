.class Lcom/miui/home/launcher/SearchBarDesktopLayout$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarDesktopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/DeviceConfig;->isGlobalSearchSupportSearchBarIcon(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$002(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z

    .line 234
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarStyle(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/DeviceConfig;->setSearchBarExpGroupInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarIconUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.SearchBar"

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSearchBarIconUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 229
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080146

    goto :goto_0

    :cond_0
    const v0, 0x7f080145

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 253
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    goto :goto_1

    :cond_2
    const/16 v0, 0xb3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 255
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 229
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

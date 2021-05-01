.class Lcom/miui/home/launcher/SearchBarDesktopLayout$1;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarDesktopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshStyle()V
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
.field isUserBlur:Z

.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarDesktopLayout;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->isSearchBarAreaLight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080096

    goto :goto_0

    :cond_0
    const v1, 0x7f080092

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "SearchBarStyleUtil"

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawableName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-static {v1, v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$102(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z

    .line 240
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$100(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 241
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/util/SearchBarStyleUtil;->URI:Landroid/net/Uri;

    const-string v5, "getSearchBarBg"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "background"

    .line 242
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "backgroundMode"

    const/4 v5, -0x1

    .line 243
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    .line 244
    iget-boolean v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    if-eqz v2, :cond_6

    .line 245
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isBackdropBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$300(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const-string v3, "background"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v2

    .line 248
    :goto_3
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v2, v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$400(Lcom/miui/home/launcher/SearchBarDesktopLayout;Landroid/os/Bundle;)V

    goto :goto_4

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$300(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const-string v2, "android.resource://com.miui.home/drawable/bg_search_bar_black8_white11"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_4

    .line 254
    :cond_6
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$300(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const-string v3, "background"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v0, v1

    :cond_8
    :goto_4
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 232
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    invoke-static {p1, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$500(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 232
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

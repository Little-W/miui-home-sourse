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

    .line 258
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "SearchBarStyleUtil"

    .line 264
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

    .line 265
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    instance-of v2, v0, Landroid/graphics/drawable/RippleDrawable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$002(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)Z

    .line 266
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$000(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 267
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/SearchBarStyleData;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 268
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData;->isUserBlur()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    .line 269
    iget-boolean v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    if-eqz v2, :cond_4

    .line 270
    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isBackdropBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 272
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/SearchBarStyleData;->getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$102(Lcom/miui/home/launcher/SearchBarDesktopLayout;Lcom/miui/blur/sdk/backdrop/BlurStyle;)Lcom/miui/blur/sdk/backdrop/BlurStyle;

    goto :goto_2

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-static {v1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$200(Lcom/miui/home/launcher/SearchBarDesktopLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    const-string v2, "android.resource://com.miui.home/drawable/bg_search_bar_black8_white11"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/Utilities;->getDrawableFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->doInBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->this$0:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    iget-boolean v0, p0, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->isUserBlur:Z

    invoke-static {p1, v0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->access$300(Lcom/miui/home/launcher/SearchBarDesktopLayout;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 258
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout$1;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

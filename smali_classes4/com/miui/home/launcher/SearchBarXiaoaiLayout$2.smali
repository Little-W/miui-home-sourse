.class Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;
.super Lcom/miui/home/launcher/common/AsyncTaskRunnable;
.source "SearchBarXiaoaiLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->refreshXiaoAi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/common/AsyncTaskRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AsyncTaskRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Boolean;
    .locals 1

    .line 162
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isSupportSearchBarXiaoAi(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 163
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "com.miui.voiceassist"

    invoke-static {v0, p0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 162
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->doInBackground()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->access$100(Lcom/miui/home/launcher/SearchBarXiaoaiLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->setEnabled(Z)V

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->this$0:Lcom/miui/home/launcher/SearchBarXiaoaiLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout;->setClickable(Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarXiaoaiLayout$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

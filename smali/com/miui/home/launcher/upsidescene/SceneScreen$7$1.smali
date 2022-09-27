.class Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen$7;)V
    .locals 0

    .line 978
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$1000(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    .line 982
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$1100(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;->clear(Z)V

    .line 983
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    iget-object v1, v1, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$1100(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyleSerializable;->load()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$802(Lcom/miui/home/launcher/upsidescene/SceneScreen;Lcom/miui/home/launcher/upsidescene/data/FreeStyle;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    .line 984
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;->this$1:Lcom/miui/home/launcher/upsidescene/SceneScreen$7;

    iget-object v0, v0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$1200(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V

    return-void
.end method

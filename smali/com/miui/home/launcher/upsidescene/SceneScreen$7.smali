.class Lcom/miui/home/launcher/upsidescene/SceneScreen$7;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 977
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$900(Lcom/miui/home/launcher/upsidescene/SceneScreen;Z)V

    .line 978
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$7;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    new-instance p2, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/upsidescene/SceneScreen$7$1;-><init>(Lcom/miui/home/launcher/upsidescene/SceneScreen$7;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

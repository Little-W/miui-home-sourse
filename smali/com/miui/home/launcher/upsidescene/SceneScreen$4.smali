.class Lcom/miui/home/launcher/upsidescene/SceneScreen$4;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->animatedRefresh()V
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

    .line 583
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->setCurrentScreen(I)V

    .line 586
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$4;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->requestLayout()V

    return-void
.end method

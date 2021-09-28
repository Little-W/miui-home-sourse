.class Lcom/miui/home/launcher/upsidescene/SceneScreen$6;
.super Ljava/lang/Object;
.source "SceneScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/upsidescene/SceneScreen;->onShowAnimationStart()V
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

    .line 873
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 875
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getChildWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$800(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 876
    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v1}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 877
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getCurrentScreen()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    .line 878
    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$000(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/ScrollableScreen;->getScreenCount()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 879
    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/SceneScreen$6;->this$0:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-static {v2}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->access$300(Lcom/miui/home/launcher/upsidescene/SceneScreen;)Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v3}, Lcom/miui/home/launcher/Launcher;->updateWallpaperOffsetAnimate(FFFF)Z

    return-void
.end method

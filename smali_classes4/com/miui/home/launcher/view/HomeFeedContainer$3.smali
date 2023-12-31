.class Lcom/miui/home/launcher/view/HomeFeedContainer$3;
.super Ljava/lang/Object;
.source "HomeFeedContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/view/HomeFeedArrowView$AlphaUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/view/HomeFeedContainer;->addAllowView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/view/HomeFeedContainer;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$3;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 1

    .line 332
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$3;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$200(Lcom/miui/home/launcher/view/HomeFeedContainer;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isShowScreenSeekBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    .line 337
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onTranslateY(FZ)V
    .locals 1

    .line 309
    iget-object p0, p0, Lcom/miui/home/launcher/view/HomeFeedContainer$3;->this$0:Lcom/miui/home/launcher/view/HomeFeedContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/view/HomeFeedContainer;->access$200(Lcom/miui/home/launcher/view/HomeFeedContainer;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/Launcher;

    if-eqz p2, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p2

    if-eqz p2, :cond_0

    neg-float v0, p1

    .line 313
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/SearchBarContainer;->setTranslationY(F)V

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object p2

    if-eqz p2, :cond_1

    neg-float v0, p1

    .line 317
    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/hotseats/HotSeats;->setTranslationY(F)V

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isShowScreenSeekBar()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->getScreenIndicator()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    neg-float p1, p1

    .line 324
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2
    return-void
.end method

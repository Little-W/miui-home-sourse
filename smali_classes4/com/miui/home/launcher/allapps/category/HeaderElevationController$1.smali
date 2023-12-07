.class Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;
.super Landroid/view/ViewOutlineProvider;
.source "HeaderElevationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->setupView(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    .line 68
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->access$000(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)I

    move-result p1

    neg-int p1, p1

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->access$000(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->access$100(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-static {v2}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->access$000(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/HeaderElevationController$1;->this$0:Lcom/miui/home/launcher/allapps/category/HeaderElevationController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/HeaderElevationController;->access$100(Lcom/miui/home/launcher/allapps/category/HeaderElevationController;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

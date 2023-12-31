.class Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;
.super Lmiuix/animation/property/FloatProperty;
.source "BoomByFolmeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 2

    .line 328
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iput p2, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    .line 329
    iget v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitRadius:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitAlpha:F

    sub-float/2addr v0, p2

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    .line 331
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$700(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget p2, p2, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 332
    iget-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {p2}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$800(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 333
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-static {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->access$800(Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget p0, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

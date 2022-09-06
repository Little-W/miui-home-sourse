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

    .line 283
    iput-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    invoke-direct {p0, p2}, Lmiuix/animation/property/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget p1, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    return p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 2

    .line 291
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iput p2, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mVisPer:F

    .line 292
    iget v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitRadius:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mRadius:F

    .line 293
    iget-object p1, p0, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark$3;->this$0:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;

    iget v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mInitAlpha:F

    sub-float/2addr v0, p2

    iput v0, p1, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator$Spark;->mAlpha:F

    return-void
.end method

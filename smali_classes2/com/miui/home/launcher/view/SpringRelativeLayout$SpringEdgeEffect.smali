.class Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private mDistance:F

.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/view/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    .line 164
    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 165
    iput p3, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    return-void
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;F)F
    .locals 0

    .line 157
    iput p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAbsorb(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    mul-float/2addr p1, p0

    invoke-static {v0, p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->access$300(Lcom/miui/home/launcher/view/SpringRelativeLayout;F)V

    return-void
.end method

.method public onPull(FF)V
    .locals 2

    .line 180
    iget-object p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-static {p2, p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->access$400(Lcom/miui/home/launcher/view/SpringRelativeLayout;Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;)V

    .line 181
    iget p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    iget v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mVelocityMultiplier:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p2, p1

    iput p2, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    .line 182
    iget-object p1, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    iget p0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    invoke-virtual {p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    const/4 v0, 0x0

    .line 187
    iput v0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->mDistance:F

    .line 188
    iget-object p0, p0, Lcom/miui/home/launcher/view/SpringRelativeLayout$SpringEdgeEffect;->this$0:Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-static {p0, v0}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->access$300(Lcom/miui/home/launcher/view/SpringRelativeLayout;F)V

    return-void
.end method

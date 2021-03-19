.class final Lcom/miui/home/launcher/view/SpringRelativeLayout$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/miui/home/launcher/view/SpringRelativeLayout;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/home/launcher/view/SpringRelativeLayout;)F
    .locals 0

    .line 48
    invoke-static {p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->access$000(Lcom/miui/home/launcher/view/SpringRelativeLayout;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/SpringRelativeLayout$1;->getValue(Lcom/miui/home/launcher/view/SpringRelativeLayout;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/home/launcher/view/SpringRelativeLayout;F)V
    .locals 0

    .line 53
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/view/SpringRelativeLayout;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 44
    check-cast p1, Lcom/miui/home/launcher/view/SpringRelativeLayout;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/SpringRelativeLayout$1;->setValue(Lcom/miui/home/launcher/view/SpringRelativeLayout;F)V

    return-void
.end method

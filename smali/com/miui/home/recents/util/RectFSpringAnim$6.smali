.class Lcom/miui/home/recents/util/RectFSpringAnim$6;
.super Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;
.source "RectFSpringAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/util/RectFSpringAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat<",
        "Lcom/miui/home/recents/util/RectFSpringAnim;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-direct {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/miui/home/recents/util/RectFSpringAnim;)F
    .locals 0

    .line 153
    invoke-static {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->access$1200(Lcom/miui/home/recents/util/RectFSpringAnim;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 150
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/util/RectFSpringAnim$6;->getValue(Lcom/miui/home/recents/util/RectFSpringAnim;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/home/recents/util/RectFSpringAnim;F)V
    .locals 1

    .line 158
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-super {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 161
    :cond_0
    invoke-static {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->access$1202(Lcom/miui/home/recents/util/RectFSpringAnim;F)F

    .line 162
    invoke-static {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->access$1300(Lcom/miui/home/recents/util/RectFSpringAnim;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->access$200(Lcom/miui/home/recents/util/RectFSpringAnim;Landroidx/dynamicanimation/animation/SpringAnimation;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 163
    invoke-static {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->access$300(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 150
    check-cast p1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim$6;->setValue(Lcom/miui/home/recents/util/RectFSpringAnim;F)V

    return-void
.end method

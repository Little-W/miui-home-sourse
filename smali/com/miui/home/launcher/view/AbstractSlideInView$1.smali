.class Lcom/miui/home/launcher/view/AbstractSlideInView$1;
.super Landroid/util/Property;
.source "AbstractSlideInView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/view/AbstractSlideInView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/miui/home/launcher/view/AbstractSlideInView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/miui/home/launcher/view/AbstractSlideInView;)Ljava/lang/Float;
    .locals 0

    .line 50
    iget p1, p1, Lcom/miui/home/launcher/view/AbstractSlideInView;->mTranslationShift:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Lcom/miui/home/launcher/view/AbstractSlideInView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/view/AbstractSlideInView$1;->get(Lcom/miui/home/launcher/view/AbstractSlideInView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/miui/home/launcher/view/AbstractSlideInView;Ljava/lang/Float;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/view/AbstractSlideInView;->setTranslationShift(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/miui/home/launcher/view/AbstractSlideInView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/view/AbstractSlideInView$1;->set(Lcom/miui/home/launcher/view/AbstractSlideInView;Ljava/lang/Float;)V

    return-void
.end method

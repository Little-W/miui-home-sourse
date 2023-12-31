.class Lmiuix/internal/widget/ListPopup$3;
.super Landroid/view/ViewOutlineProvider;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/internal/widget/ListPopup;->setPopupShadowAlpha(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/internal/widget/ListPopup;


# direct methods
.method constructor <init>(Lmiuix/internal/widget/ListPopup;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lmiuix/internal/widget/ListPopup$3;->this$0:Lmiuix/internal/widget/ListPopup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lmiuix/appcompat/R$attr;->popupWindowShadowAlpha:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveFloat(Landroid/content/Context;IF)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_1
    :goto_0
    return-void
.end method

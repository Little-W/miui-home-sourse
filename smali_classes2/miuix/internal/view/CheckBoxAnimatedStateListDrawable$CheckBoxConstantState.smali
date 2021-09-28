.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;
.super Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
.source "CheckBoxAnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CheckBoxConstantState"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method protected newAnimatedStateListDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    new-instance v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    invoke-direct {v0, p1, p2, p3}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V

    return-object v0
.end method

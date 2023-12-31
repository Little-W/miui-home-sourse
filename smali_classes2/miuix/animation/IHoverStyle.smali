.class public interface abstract Lmiuix/animation/IHoverStyle;
.super Ljava/lang/Object;
.source "IHoverStyle.java"

# interfaces
.implements Lmiuix/animation/IStateContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/IHoverStyle$HoverEffect;,
        Lmiuix/animation/IHoverStyle$HoverType;
    }
.end annotation


# virtual methods
.method public abstract addMagicPoint(Landroid/graphics/Point;)V
.end method

.method public abstract clearMagicPoint()V
.end method

.method public abstract clearTintColor()Lmiuix/animation/IHoverStyle;
.end method

.method public abstract getFeedbackColor()I
.end method

.method public abstract getFeedbackRadius()F
.end method

.method public abstract getPointerShapeType()I
.end method

.method public varargs abstract handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract hoverEnter(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract hoverEnter([Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract hoverExit(Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract hoverExit([Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract hoverMove(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
.end method

.method public abstract ignoreHoverOf(Landroid/view/View;)V
.end method

.method public abstract isMagicView()Z
.end method

.method public abstract isWrapped()Z
.end method

.method public abstract onMotionEvent(Landroid/view/MotionEvent;)V
.end method

.method public varargs abstract onMotionEventEx(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
.end method

.method public varargs abstract setAlpha(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setBackgroundColor(FFFF)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setBackgroundColor(I)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setCorner(F)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setFeedbackColor(I)V
.end method

.method public abstract setFeedbackRadius(F)V
.end method

.method public abstract setHotXOffset(I)V
.end method

.method public abstract setHotYOffset(I)V
.end method

.method public abstract setHoverEnter()V
.end method

.method public abstract setHoverExit()V
.end method

.method public abstract setMagicView(Z)V
.end method

.method public abstract setParentView(Landroid/view/View;)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setPointerHide(Z)V
.end method

.method public abstract setPointerShape(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setPointerShapeType(I)V
.end method

.method public varargs abstract setScale(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setTint(FFFF)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setTint(I)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setTintMode(I)Lmiuix/animation/IHoverStyle;
.end method

.method public varargs abstract setTranslate(F[Lmiuix/animation/IHoverStyle$HoverType;)Lmiuix/animation/IHoverStyle;
.end method

.method public abstract setWrapped(Z)V
.end method

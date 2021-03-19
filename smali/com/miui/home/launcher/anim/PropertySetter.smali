.class public Lcom/miui/home/launcher/anim/PropertySetter;
.super Ljava/lang/Object;
.source "PropertySetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/anim/PropertySetter$AnimatedPropertySetter;
    }
.end annotation


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/miui/home/launcher/anim/PropertySetter;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/PropertySetter;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/miui/home/launcher/anim/PropertySetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 0

    return-void
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 35
    invoke-static {p1}, Lcom/miui/home/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method

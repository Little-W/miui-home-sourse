.class Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;
.super Ljava/lang/Object;
.source "UserPresentLoadingAnimation.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackEaseOutInterpolator"
.end annotation


# static fields
.field static final sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    invoke-direct {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    const v1, 0x402ce6b0

    mul-float/2addr v1, p1

    const p1, 0x3fd9cd60

    add-float/2addr v1, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

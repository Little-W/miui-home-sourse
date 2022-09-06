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

    .line 164
    new-instance v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    invoke-direct {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;->sInstance:Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation$BackEaseOutInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    const v2, 0x402ce6b0

    mul-float/2addr v2, p1

    const p1, 0x3fd9cd60

    add-float/2addr v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

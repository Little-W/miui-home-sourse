.class public abstract Lcom/android/systemui/shared/recents/system/ActivityOptionsCompat;
.super Ljava/lang/Object;
.source "ActivityOptionsCompat.java"


# static fields
.field public static final SPLIT_SCREEN_CREATE_MODE_BOTTOM_OR_RIGHT:I = 0x1

.field public static final SPLIT_SCREEN_CREATE_MODE_TOP_OR_LEFT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRemoteAnimation(Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;)Landroid/app/ActivityOptions;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat;->getWrapped()Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    invoke-static {p0}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeSplitScreenOptions(Z)Landroid/app/ActivityOptions;
    .locals 2

    .line 34
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v1, 0x3

    .line 35
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    xor-int/lit8 p0, p0, 0x1

    .line 36
    invoke-virtual {v0, p0}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    return-object v0
.end method

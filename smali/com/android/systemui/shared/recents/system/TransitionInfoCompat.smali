.class public Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;
.super Ljava/lang/Object;
.source "TransitionInfoCompat.java"


# instance fields
.field private mTransitionInfo:Landroid/window/TransitionInfo;


# direct methods
.method public constructor <init>(Landroid/window/TransitionInfo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->mTransitionInfo:Landroid/window/TransitionInfo;

    return-void
.end method


# virtual methods
.method public getWrapped()Landroid/window/TransitionInfo;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->mTransitionInfo:Landroid/window/TransitionInfo;

    return-object p0
.end method

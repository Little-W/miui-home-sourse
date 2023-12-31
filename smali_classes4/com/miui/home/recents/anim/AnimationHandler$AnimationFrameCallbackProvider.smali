.class abstract Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AnimationFrameCallbackProvider"
.end annotation


# instance fields
.field final mDispatcher:Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;)V
    .locals 0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/miui/home/recents/anim/AnimationHandler$AnimationFrameCallbackProvider;->mDispatcher:Lcom/miui/home/recents/anim/AnimationHandler$AnimationCallbackDispatcher;

    return-void
.end method


# virtual methods
.method abstract postFrameCallback()V
.end method

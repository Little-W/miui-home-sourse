.class Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;
.super Ljava/lang/Object;
.source "UnlockAnimationStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetInsetsModeRunnable"
.end annotation


# instance fields
.field insetsMode:I

.field final synthetic this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;->this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$1;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;-><init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;->this$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    iget v1, p0, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine$ResetInsetsModeRunnable;->insetsMode:I

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->access$100(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;I)I

    return-void
.end method

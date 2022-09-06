.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$-FTsklMU7E0I6LZa5VyWH_KMeyQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$-FTsklMU7E0I6LZa5VyWH_KMeyQ;->f$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$-FTsklMU7E0I6LZa5VyWH_KMeyQ;->f$0:Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/UnlockAnimationStateMachine;->isLockScreen()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

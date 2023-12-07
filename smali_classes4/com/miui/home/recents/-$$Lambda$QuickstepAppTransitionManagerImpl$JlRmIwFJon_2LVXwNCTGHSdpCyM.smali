.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JlRmIwFJon_2LVXwNCTGHSdpCyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JlRmIwFJon_2LVXwNCTGHSdpCyM;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$JlRmIwFJon_2LVXwNCTGHSdpCyM;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$JlRmIwFJon_2LVXwNCTGHSdpCyM(Lcom/miui/home/launcher/Launcher;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

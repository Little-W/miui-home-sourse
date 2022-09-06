.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$WGQ85r9284Ak290TuFc4sXKKamk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WGQ85r9284Ak290TuFc4sXKKamk;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$WGQ85r9284Ak290TuFc4sXKKamk;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->lambda$closeAllOverLauncherWindow$18(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

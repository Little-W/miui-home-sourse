.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$OnQn_Y866oisfSWsQF92g1EqejE;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$OnQn_Y866oisfSWsQF92g1EqejE;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$OnQn_Y866oisfSWsQF92g1EqejE;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->lambda$checkAllAppsLabel$50$Launcher()V

    return-void
.end method

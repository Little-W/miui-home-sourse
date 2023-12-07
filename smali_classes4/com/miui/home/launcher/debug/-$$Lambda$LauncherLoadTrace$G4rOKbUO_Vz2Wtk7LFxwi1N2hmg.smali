.class public final synthetic Lcom/miui/home/launcher/debug/-$$Lambda$LauncherLoadTrace$G4rOKbUO_Vz2Wtk7LFxwi1N2hmg;
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

    iput-object p1, p0, Lcom/miui/home/launcher/debug/-$$Lambda$LauncherLoadTrace$G4rOKbUO_Vz2Wtk7LFxwi1N2hmg;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/debug/-$$Lambda$LauncherLoadTrace$G4rOKbUO_Vz2Wtk7LFxwi1N2hmg;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->lambda$finishLauncher$0(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

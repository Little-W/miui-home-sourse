.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$IS1tMRyk6JyyXvyDoFcS_hTp8XY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$IS1tMRyk6JyyXvyDoFcS_hTp8XY;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$IS1tMRyk6JyyXvyDoFcS_hTp8XY;->f$0:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->lambda$updateDarkModeIfScreenModeChange$77$Launcher()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

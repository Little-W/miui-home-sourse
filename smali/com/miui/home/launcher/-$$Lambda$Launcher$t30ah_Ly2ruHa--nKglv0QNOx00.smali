.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$t30ah_Ly2ruHa--nKglv0QNOx00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/module/ModuleManagerCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t30ah_Ly2ruHa--nKglv0QNOx00;->f$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t30ah_Ly2ruHa--nKglv0QNOx00;->f$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$loadPaView$14(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

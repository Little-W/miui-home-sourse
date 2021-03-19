.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$jMmLcqvm5g5_1XB_FkC0iZy3VEA;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$jMmLcqvm5g5_1XB_FkC0iZy3VEA;->f$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$jMmLcqvm5g5_1XB_FkC0iZy3VEA;->f$0:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$loadPaView$11(Lcom/miui/home/launcher/module/ModuleManagerCompat;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$29$mrRCqoVJpeNhnn7djO6w0QMMOg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$29;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$29;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$29$mrRCqoVJpeNhnn7djO6w0QMMOg4;->f$0:Lcom/miui/home/launcher/Launcher$29;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$29$mrRCqoVJpeNhnn7djO6w0QMMOg4;->f$0:Lcom/miui/home/launcher/Launcher$29;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$29;->lambda$onChange$0$Launcher$29(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

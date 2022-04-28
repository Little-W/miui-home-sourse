.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$bUD66TKtVYA0ioV4_bObNk5TPGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$bUD66TKtVYA0ioV4_bObNk5TPGs;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$bUD66TKtVYA0ioV4_bObNk5TPGs;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$appOnClick$24(Lcom/miui/home/launcher/Launcher;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

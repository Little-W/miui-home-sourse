.class public final synthetic Lcom/miui/home/launcher/module/-$$Lambda$ModuleManagerCompat$DozrQDm9H3sFXlkasD4ywJPyCzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/module/-$$Lambda$ModuleManagerCompat$DozrQDm9H3sFXlkasD4ywJPyCzQ;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/module/-$$Lambda$ModuleManagerCompat$DozrQDm9H3sFXlkasD4ywJPyCzQ;->f$0:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/module/ModuleManagerCompat;->lambda$makeMiuiHomeLoadClassFirst$0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

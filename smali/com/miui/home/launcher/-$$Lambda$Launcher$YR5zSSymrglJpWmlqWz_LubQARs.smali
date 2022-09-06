.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$YR5zSSymrglJpWmlqWz_LubQARs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YR5zSSymrglJpWmlqWz_LubQARs;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$YR5zSSymrglJpWmlqWz_LubQARs;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$updateIconWhenInstallForSomeContainer$67(Lcom/miui/home/launcher/Launcher;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

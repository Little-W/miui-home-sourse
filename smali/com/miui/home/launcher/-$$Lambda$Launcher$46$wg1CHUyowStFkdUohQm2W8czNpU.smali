.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$46$wg1CHUyowStFkdUohQm2W8czNpU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$46;

.field private final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$46;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$46$wg1CHUyowStFkdUohQm2W8czNpU;->f$0:Lcom/miui/home/launcher/Launcher$46;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$46$wg1CHUyowStFkdUohQm2W8czNpU;->f$1:Lcom/miui/home/launcher/FolderInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$46$wg1CHUyowStFkdUohQm2W8czNpU;->f$0:Lcom/miui/home/launcher/Launcher$46;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$46$wg1CHUyowStFkdUohQm2W8czNpU;->f$1:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher$46;->lambda$run$0(Lcom/miui/home/launcher/Launcher$46;Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

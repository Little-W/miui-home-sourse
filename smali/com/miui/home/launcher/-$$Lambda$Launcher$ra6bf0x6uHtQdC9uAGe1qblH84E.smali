.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava8/util/function/Supplier;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava8/util/function/Supplier;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$1:Ljava8/util/function/Supplier;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$1:Ljava8/util/function/Supplier;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$ra6bf0x6uHtQdC9uAGe1qblH84E;->f$2:Ljava/util/List;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppsRemoved$51(Lcom/miui/home/launcher/Launcher;Ljava8/util/function/Supplier;Ljava/util/List;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

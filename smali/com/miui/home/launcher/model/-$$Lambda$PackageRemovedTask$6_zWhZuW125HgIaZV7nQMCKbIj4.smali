.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/model/PackageRemovedTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;->f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$6_zWhZuW125HgIaZV7nQMCKbIj4;->f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->lambda$execute$0(Lcom/miui/home/launcher/model/PackageRemovedTask;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result p1

    return p1
.end method

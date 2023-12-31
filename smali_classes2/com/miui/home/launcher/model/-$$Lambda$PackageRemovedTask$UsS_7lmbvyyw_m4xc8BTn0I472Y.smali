.class public final synthetic Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$UsS_7lmbvyyw_m4xc8BTn0I472Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;

.field private final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/model/PackageRemovedTask;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$UsS_7lmbvyyw_m4xc8BTn0I472Y;->f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;

    iput-object p2, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$UsS_7lmbvyyw_m4xc8BTn0I472Y;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$UsS_7lmbvyyw_m4xc8BTn0I472Y;->f$0:Lcom/miui/home/launcher/model/PackageRemovedTask;

    iget-object p0, p0, Lcom/miui/home/launcher/model/-$$Lambda$PackageRemovedTask$UsS_7lmbvyyw_m4xc8BTn0I472Y;->f$1:Landroid/os/UserHandle;

    check-cast p1, Lcom/miui/home/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/model/PackageRemovedTask;->lambda$execute$0$PackageRemovedTask(Landroid/os/UserHandle;Lcom/miui/home/launcher/LauncherAppWidgetInfo;)Z

    move-result p0

    return p0
.end method

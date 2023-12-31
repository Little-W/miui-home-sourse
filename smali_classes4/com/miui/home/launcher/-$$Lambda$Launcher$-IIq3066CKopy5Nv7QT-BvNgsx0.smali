.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$-IIq3066CKopy5Nv7QT-BvNgsx0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-IIq3066CKopy5Nv7QT-BvNgsx0;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-IIq3066CKopy5Nv7QT-BvNgsx0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-IIq3066CKopy5Nv7QT-BvNgsx0;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$-IIq3066CKopy5Nv7QT-BvNgsx0;->f$1:Ljava/util/function/Supplier;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppsRemoved$70$Launcher(Ljava/util/function/Supplier;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method

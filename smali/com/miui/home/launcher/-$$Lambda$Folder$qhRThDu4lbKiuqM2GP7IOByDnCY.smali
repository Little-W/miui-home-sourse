.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;->f$0:Lcom/miui/home/launcher/Folder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Folder$qhRThDu4lbKiuqM2GP7IOByDnCY;->f$0:Lcom/miui/home/launcher/Folder;

    invoke-static {v0}, Lcom/miui/home/launcher/Folder;->lambda$onClose$0(Lcom/miui/home/launcher/Folder;)V

    return-void
.end method

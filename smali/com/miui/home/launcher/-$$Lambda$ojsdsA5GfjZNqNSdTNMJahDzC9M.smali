.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ojsdsA5GfjZNqNSdTNMJahDzC9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderCling;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ojsdsA5GfjZNqNSdTNMJahDzC9M;->f$0:Lcom/miui/home/launcher/FolderCling;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ojsdsA5GfjZNqNSdTNMJahDzC9M;->f$0:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderCling;->onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V

    return-void
.end method

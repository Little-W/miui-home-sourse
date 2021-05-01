.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;->f$0:Lcom/miui/home/launcher/Workspace;

    return-void
.end method


# virtual methods
.method public final onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$_YJqd7l5OezSCTWJisGf13cybl8;->f$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Workspace;->onDeviceProfileChanged(Lcom/miui/home/launcher/DeviceProfile;)V

    return-void
.end method

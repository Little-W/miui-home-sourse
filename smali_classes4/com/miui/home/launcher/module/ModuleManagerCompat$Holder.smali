.class Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;
.super Ljava/lang/Object;
.source "ModuleManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/module/ModuleManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/home/launcher/module/ModuleManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/miui/home/launcher/module/ModuleManagerCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/module/ModuleManagerCompat;-><init>(Lcom/miui/home/launcher/module/ModuleManagerCompat$1;)V

    sput-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;->sInstance:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/home/launcher/module/ModuleManagerCompat;
    .locals 1

    .line 25
    sget-object v0, Lcom/miui/home/launcher/module/ModuleManagerCompat$Holder;->sInstance:Lcom/miui/home/launcher/module/ModuleManagerCompat;

    return-object v0
.end method

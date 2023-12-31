.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$37$DQLxHXJ2HchGfBmnGAHLsuA1ODc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher$37;->lambda$onChange$0(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

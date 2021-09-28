.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;

    invoke-direct {v0}, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;->INSTANCE:Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsController$O83NxfOZAK7jZI9Sia3I26By7-U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsController;->lambda$requestCloudSettingsInfo$0(Ljava/lang/Void;)Lcom/miui/msa/global/guessyoulike/v1/GlobalColudControlInfo;

    move-result-object p1

    return-object p1
.end method

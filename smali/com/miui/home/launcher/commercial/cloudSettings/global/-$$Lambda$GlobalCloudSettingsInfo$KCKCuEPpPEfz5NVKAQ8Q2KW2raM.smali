.class public final synthetic Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsInfo$KCKCuEPpPEfz5NVKAQ8Q2KW2raM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsInfo$KCKCuEPpPEfz5NVKAQ8Q2KW2raM;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/global/-$$Lambda$GlobalCloudSettingsInfo$KCKCuEPpPEfz5NVKAQ8Q2KW2raM;->f$0:Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;

    check-cast p1, Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;->lambda$updateEveryFolderInfo$0(Lcom/miui/home/launcher/commercial/cloudSettings/global/GlobalCloudSettingsInfo;Lcom/miui/msa/global/guessyoulike/v1/GlobalCloudAdConfig;)V

    return-void
.end method

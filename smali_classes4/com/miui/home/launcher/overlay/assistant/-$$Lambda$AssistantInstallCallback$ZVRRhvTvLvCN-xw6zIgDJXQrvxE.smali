.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ZVRRhvTvLvCN-xw6zIgDJXQrvxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ZVRRhvTvLvCN-xw6zIgDJXQrvxE;->f$0:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$ZVRRhvTvLvCN-xw6zIgDJXQrvxE;->f$0:Lorg/json/JSONArray;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$getLauncherMaMls$9(Lorg/json/JSONArray;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

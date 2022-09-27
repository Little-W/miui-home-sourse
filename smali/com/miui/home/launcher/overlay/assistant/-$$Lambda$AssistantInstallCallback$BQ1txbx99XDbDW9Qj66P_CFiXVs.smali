.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$BQ1txbx99XDbDW9Qj66P_CFiXVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$BQ1txbx99XDbDW9Qj66P_CFiXVs;->f$0:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/assistant/-$$Lambda$AssistantInstallCallback$BQ1txbx99XDbDW9Qj66P_CFiXVs;->f$0:Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->lambda$getLauncherMaMls$8(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void
.end method

.class public final synthetic Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$JF7DGhO-g7bEFZuOGh6avsz9giI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$JF7DGhO-g7bEFZuOGh6avsz9giI;->f$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/settings/-$$Lambda$BaseAllAppsSettingsFragment$JF7DGhO-g7bEFZuOGh6avsz9giI;->f$0:Lcom/miui/home/settings/BaseAllAppsSettingsFragment;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/settings/BaseAllAppsSettingsFragment;->lambda$onCreatePreferences$0(Lcom/miui/home/settings/BaseAllAppsSettingsFragment;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

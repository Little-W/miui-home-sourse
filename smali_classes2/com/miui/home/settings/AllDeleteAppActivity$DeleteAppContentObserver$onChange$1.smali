.class final Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver$onChange$1;
.super Ljava/lang/Object;
.source "AllDeleteAppActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver$onChange$1;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver$onChange$1;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;

    iget-object p0, p0, Lcom/miui/home/settings/AllDeleteAppActivity$DeleteAppContentObserver;->this$0:Lcom/miui/home/settings/AllDeleteAppActivity;

    invoke-static {p0}, Lcom/miui/home/settings/AllDeleteAppActivity;->access$updateAppStatus(Lcom/miui/home/settings/AllDeleteAppActivity;)V

    return-void
.end method

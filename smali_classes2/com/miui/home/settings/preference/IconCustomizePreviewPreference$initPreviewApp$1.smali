.class final Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;
.super Ljava/lang/Object;
.source "IconCustomizePreviewPreference.kt"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;->call()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final call()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$1;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-static {p0}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->access$getPreviewApps(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

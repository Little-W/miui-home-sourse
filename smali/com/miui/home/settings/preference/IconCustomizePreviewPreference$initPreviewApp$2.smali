.class final Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;
.super Ljava/lang/Object;
.source "IconCustomizePreviewPreference.kt"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex2/functions/Consumer<",
        "Ljava/util/List<",
        "+",
        "Lcom/miui/home/launcher/AppInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconCustomizePreviewPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconCustomizePreviewPreference.kt\ncom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2\n*L\n1#1,127:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;->accept(Ljava/util/List;)V

    return-void
.end method

.method public final accept(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/home/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewApp$2;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-static {v0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->access$onLoadPreviewApps(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Ljava/util/List;)V

    :cond_0
    return-void
.end method

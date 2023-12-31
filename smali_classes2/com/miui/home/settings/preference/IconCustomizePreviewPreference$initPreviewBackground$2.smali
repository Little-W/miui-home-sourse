.class final Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;
.super Ljava/lang/Object;
.source "IconCustomizePreviewPreference.kt"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->initPreviewBackground()V
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;


# direct methods
.method constructor <init>(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;->this$0:Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;

    invoke-static {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;->access$onLoadPreviewBackground(Lcom/miui/home/settings/preference/IconCustomizePreviewPreference;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/miui/home/settings/preference/IconCustomizePreviewPreference$initPreviewBackground$2;->accept(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

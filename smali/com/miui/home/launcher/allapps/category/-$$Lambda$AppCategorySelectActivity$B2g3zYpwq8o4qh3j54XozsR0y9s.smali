.class public final synthetic Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;ILjava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;

    iput p2, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$2:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;

    iget v1, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$1:I

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/-$$Lambda$AppCategorySelectActivity$B2g3zYpwq8o4qh3j54XozsR0y9s;->f$2:Ljava/util/Collection;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectActivity;->lambda$onDelete$0$AppCategorySelectActivity(ILjava/util/Collection;Landroid/content/DialogInterface;I)V

    return-void
.end method
